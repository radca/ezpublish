<?php
//
// Definition of eZNotificationEventFilter class
//
// Created on: <09-May-2003 16:05:40 sp>
//
// Copyright (C) 1999-2004 eZ systems as. All rights reserved.
//
// This source file is part of the eZ publish (tm) Open Source Content
// Management System.
//
// This file may be distributed and/or modified under the terms of the
// "GNU General Public License" version 2 as published by the Free
// Software Foundation and appearing in the file LICENSE.GPL included in
// the packaging of this file.
//
// Licencees holding valid "eZ publish professional licences" may use this
// file in accordance with the "eZ publish professional licence" Agreement
// provided with the Software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING
// THE WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE.
//
// The "eZ publish professional licence" is available at
// http://ez.no/products/licences/professional/. For pricing of this licence
// please contact us via e-mail to licence@ez.no. Further contact
// information is available at http://ez.no/home/contact/.
//
// The "GNU General Public License" (GPL) is available at
// http://www.gnu.org/copyleft/gpl.html.
//
// Contact licence@ez.no if any conditions of this licencing isn't clear to
// you.
//

/*! \file eznotificationeventfilter.php
*/

/*!
  \class eZNotificationEventFilter eznotificationeventfilter.php
  \brief The class eZNotificationEventFilter does

*/
include_once( 'kernel/classes/notification/eznotificationevent.php' );
class eZNotificationEventFilter
{
    /*!
     Constructor
    */
    function eZNotificationEventFilter()
    {
    }

    function process()
    {
        $eventList =& eZNotificationEvent::fetchUnhandledList();
        $availableHandlers =& eZNotificationEventFilter::availableHandlers();
        foreach( array_keys( $eventList ) as $key )
        {
            $event =& $eventList[$key];
            foreach( array_keys( $availableHandlers ) as $handlerKey )
            {
                $handler =& $availableHandlers[$handlerKey];
                if ( $handler === false )
                {
                    eZDebug::writeError( "Notification handler does not exist: $handlerKey", 'eZNotificationEventFilter::process()' );
                }
                else
                {
                    $handler->handle( $event );
                }
            }
            $itemCountLeft =& eZNotificationCollectionItem::fetchCountForEvent( $event->attribute( 'id' ) );
            if ( $itemCountLeft == 0 )
            {
                $event->remove();
            }
            else
            {
                $event->setAttribute( 'status', EZ_NOTIFICATIONEVENT_STATUS_HANDLED );
                $event->store();
            }
        }
        eZNotificationCollection::removeEmpty();
    }

    function &availableHandlers()
    {
        include_once( 'lib/ezutils/classes/ezextension.php' );
        $baseDirectory = eZExtension::baseDirectory();
        $notificationINI =& eZINI::instance( 'notification.ini' );
        $availableHandlers = $notificationINI->variable( 'NotificationEventHandlerSettings', 'AvailableNotificationEventTypes' );
        $repositoryDirectories = $notificationINI->variable( 'NotificationEventHandlerSettings', 'RepositoryDirectories' );
        $extensionDirectories = $notificationINI->variable( 'NotificationEventHandlerSettings', 'ExtensionDirectories' );
        foreach ( $extensionDirectories as $extensionDirectory )
        {
            $extensionPath = $baseDirectory . '/' . $extensionDirectory . '/notification/handler';
            if ( file_exists( $extensionPath ) )
                $repositoryDirectories[] = $extensionPath;
        }
        $handlers = array();
        foreach( $availableHandlers as $handlerString )
        {
            $eventHandler =& eZNotificationEventFilter::loadHandler( $repositoryDirectories, $handlerString );
            if ( is_object( $eventHandler ) )
                $handlers[$handlerString] =& $eventHandler;
        }
        return $handlers;
    }

    function loadHandler( $directories, $handlerString )
    {
        $foundHandler = false;
        $includeFile = '';
        foreach ( $directories as $repositoryDirectory )
        {
            $includeFile = "$repositoryDirectory/$handlerString/" . $handlerString . "handler.php";
            if ( file_exists( $includeFile ) )
            {
                $foundHandler = true;
                break;
            }
        }
        if ( !$foundHandler  )
        {
            eZDebug::writeError( "Notification handler does not exist: $handlerString", 'eZNotificationEventFilter::loadHandler()' );
            return false;
        }
        include_once( $includeFile );
        $className = $handlerString . "handler";
        return new $className();
    }

}

?>
