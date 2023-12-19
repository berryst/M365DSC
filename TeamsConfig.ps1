        TeamsAppPermissionPolicy "TeamsAppPermissionPolicy-Global"
        {
            Credential             = $Credscredential;
            DefaultCatalogAppsType = "BlockedAppList";
            Ensure                 = "Present";
            GlobalCatalogAppsType  = "BlockedAppList";
            Identity               = "Global";
            PrivateCatalogAppsType = "BlockedAppList";
        }

        TeamsAppSetupPolicy "TeamsAppSetupPolicy-Global"
        {
            AllowSideLoading     = $False;
            AllowUserPinning     = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
        }

        TeamsAppSetupPolicy "TeamsAppSetupPolicy-FirstLineWorker"
        {
            AllowSideLoading     = $False;
            AllowUserPinning     = $True;
            Credential           = $Credscredential;
            Description          = "This is a default app setup policy for Firstline workers. This policy cannot be customized.";
            Ensure               = "Present";
            Identity             = "FirstLineWorker";
        }

        TeamsAudioConferencingPolicy "TeamsAudioConferencingPolicy-Global"
        {
            AllowTollFreeDialin       = $True;
            Credential                = $Credscredential;
            Ensure                    = "Present";
            Identity                  = "Global";
            MeetingInvitePhoneNumbers = @();
        }

        TeamsCallHoldPolicy "TeamsCallHoldPolicy-Global"
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Global"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $True;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $True;
            AllowTranscriptionForCalling      = $True;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Global";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Tag:Shared Device Calling Policy"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $True;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $True;
            AllowTranscriptionForCalling      = $True;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:Shared Device Calling Policy";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCalling"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Tag:DisallowCalling"
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $False;
            AllowCallGroups                   = $False;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $False;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:DisallowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCallingPreventTollBypass"
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventTollBypass";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $True;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallingPolicy "TeamsCallingPolicy-Tag:AllowCallingPreventForwardingtoPhone"
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCallRedirect                 = "Disabled";
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowSIPDevicesCalling            = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            CallRecordingExpirationDays       = 60;
            Credential                        = $Credscredential;
            Ensure                            = "Present";
            Identity                          = "Tag:AllowCallingPreventForwardingtoPhone";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SpamFilteringEnabledType          = "Enabled";
        }

        TeamsCallParkPolicy "TeamsCallParkPolicy-Global"
        {
            AllowCallPark        = $False;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
            ParkTimeoutSeconds   = 300;
            PickupRangeEnd       = 99;
            PickupRangeStart     = 10;
        }

        TeamsChannelsPolicy "TeamsChannelsPolicy-Global"
        {
            AllowChannelSharingToExternalUser             = $True;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $True;
            Credential                                    = $Credscredential;
            EnablePrivateTeamDiscovery                    = $False;
            Ensure                                        = "Present";
            Identity                                      = "Global";
        }

        TeamsChannelsPolicy "TeamsChannelsPolicy-Tag:Default"
        {
            AllowChannelSharingToExternalUser             = $True;
            AllowOrgWideTeamCreation                      = $True;
            AllowPrivateChannelCreation                   = $True;
            AllowSharedChannelCreation                    = $True;
            AllowUserToParticipateInExternalSharedChannel = $True;
            Credential                                    = $Credscredential;
            EnablePrivateTeamDiscovery                    = $False;
            Ensure                                        = "Present";
            Identity                                      = "Tag:Default";
        }

        TeamsClientConfiguration "TeamsClientConfiguration-Global"
        {
            AllowBox                         = $True;
            AllowDropBox                     = $True;
            AllowEgnyte                      = $True;
            AllowEmailIntoChannel            = $True;
            AllowGoogleDrive                 = $True;
            AllowGuestUser                   = $True;
            AllowOrganizationTab             = $True;
            AllowResourceAccountSendMessage  = $True;
            AllowScopedPeopleSearchandAccess = $False;
            AllowShareFile                   = $True;
            AllowSkypeBusinessInterop        = $True;
            ContentPin                       = "RequiredOutsideScheduleMeeting";
            Credential                       = $Credscredential;
            Identity                         = "Global";
            ResourceAccountContentAccess     = "NoAccess";
        }

        TeamsComplianceRecordingPolicy "TeamsComplianceRecordingPolicy-Global"
        {
            ComplianceRecordingApplications                     = @();
            Credential                                          = $Credscredential;
            DisableComplianceRecordingAudioNotificationForCalls = $False;
            Enabled                                             = $False;
            Ensure                                              = "Present";
            Identity                                            = "Global";
            WarnUserOnRemoval                                   = $True;
        }

        TeamsCortanaPolicy "TeamsCortanaPolicy-Global"
        {
            CortanaVoiceInvocationMode = "WakeWordPushToTalkUserOverride";
            Credential                 = $Credscredential;
            Ensure                     = "Present";
            Identity                   = "Global";
        }

        TeamsDialInConferencingTenantSettings "TeamsDialInConferencingTenantSettings"
        {
            AllowPSTNOnlyMeetingsByDefault   = $False;
            AutomaticallyMigrateUserMeetings = $True;
            AutomaticallyReplaceAcpProvider  = $False;
            AutomaticallySendEmailsToUsers   = $True;
            Credential                       = $Credscredential;
            EnableDialOutJoinConfirmation    = $False;
            EnableEntryExitNotifications     = $True;
            EntryExitAnnouncementsType       = "ToneOnly";
            IsSingleInstance                 = "Yes";
            MaskPstnNumbersType              = "MaskedForExternalUsers";
            PinLength                        = 5;
        }

        TeamsEmergencyCallingPolicy "TeamsEmergencyCallingPolicy-Global"
        {
            Credential                 = $Credscredential;
            Ensure                     = "Present";
            ExternalLocationLookupMode = "Disabled";
            Identity                   = "Global";
        }

        TeamsEmergencyCallRoutingPolicy "TeamsEmergencyCallRoutingPolicy-Global"
        {
            AllowEnhancedEmergencyServices = $False;
            Credential                     = $Credscredential;
            Ensure                         = "Present";
            Identity                       = "Global";
        }

        TeamsEnhancedEncryptionPolicy "TeamsEnhancedEncryptionPolicy-Global"
        {
            CallingEndtoEndEncryptionEnabledType = "Disabled";
            Credential                           = $Credscredential;
            Ensure                               = "Present";
            Identity                             = "Global";
            MeetingEndToEndEncryption            = "DisabledUserOverride";
        }

        TeamsEnhancedEncryptionPolicy "TeamsEnhancedEncryptionPolicy-Tag:Disabled"
        {
            CallingEndtoEndEncryptionEnabledType = "Disabled";
            Credential                           = $Credscredential;
            Ensure                               = "Present";
            Identity                             = "Tag:Disabled";
            MeetingEndToEndEncryption            = "Disabled";
        }

        TeamsEnhancedEncryptionPolicy "TeamsEnhancedEncryptionPolicy-Tag:UserControlled"
        {
            CallingEndtoEndEncryptionEnabledType = "DisabledUserOverride";
            Credential                           = $Credscredential;
            Ensure                               = "Present";
            Identity                             = "Tag:UserControlled";
            MeetingEndToEndEncryption            = "DisabledUserOverride";
        }

        TeamsEventsPolicy "TeamsEventsPolicy-Global"
        {
            AllowWebinars        = "Enabled";
            Credential           = $Credscredential;
            Description          = "Default policy";
            Ensure               = "Present";
            EventAccessType      = "Everyone";
            Identity             = "Global";
        }

        TeamsFederationConfiguration "TeamsFederationConfiguration-Global"
        {
            AllowedDomains                              = @("microsoft.com","M365B314095.onmicrosoft.com","365teams.club");
            AllowFederatedUsers                         = $True;
            AllowPublicUsers                            = $False;
            AllowTeamsConsumer                          = $False;
            AllowTeamsConsumerInbound                   = $True;
            BlockedDomains                              = @();
            Credential                                  = $Credscredential;
            Identity                                    = "Global";
            RestrictTeamsConsumerToExternalUserProfiles = $False;
            SharedSipAddressSpace                       = $False;
            TreatDiscoveredPartnersAsUnverified         = $False;
        }

        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Global"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            Credential                = $Credscredential;
            Ensure                    = "Present";
            Identity                  = "Global";
            ReceiveSurveysMode        = "EnabledUserOverride";
            UserInitiatedMode         = "Enabled";
        }

        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:UserChoice"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            Credential                = $Credscredential;
            Ensure                    = "Present";
            Identity                  = "Tag:UserChoice";
            ReceiveSurveysMode        = "EnabledUserOverride";
            UserInitiatedMode         = "Enabled";
        }

        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:Enabled"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            Credential                = $Credscredential;
            Ensure                    = "Present";
            Identity                  = "Tag:Enabled";
            ReceiveSurveysMode        = "Enabled";
            UserInitiatedMode         = "Enabled";
        }

        TeamsFeedbackPolicy "TeamsFeedbackPolicy-Tag:Disabled"
        {
            AllowEmailCollection      = $False;
            AllowLogCollection        = $False;
            AllowScreenshotCollection = $False;
            Credential                = $Credscredential;
            Ensure                    = "Present";
            Identity                  = "Tag:Disabled";
            ReceiveSurveysMode        = "Disabled";
            UserInitiatedMode         = "Disabled";
        }

        TeamsFilesPolicy "TeamsFilesPolicy-Global"
        {
            Credential            = $Credscredential;
            Ensure                = "Present";
            Identity              = "Global";
            NativeFileEntryPoints = "Enabled";
            SPChannelFilesTab     = "Enabled";
        }

        TeamsGroupPolicyAssignment "TeamsGroupPolicyAssignment"
        {
            Credential           = $Credscredential;
            Ensure               = "Present";
            GroupDisplayName     = "MTR-W Resource Accounts";
            GroupId              = "6eb2bb56-7ccc-427b-867d-ba2df82c1368";
            PolicyName           = "Shared Device Calling Policy";
            PolicyType           = "TeamsCallingPolicy";
            Priority             = 1;
        }

        TeamsGuestCallingConfiguration "TeamsGuestCallingConfiguration-Global"
        {
            AllowPrivateCalling  = $True;
            Credential           = $Credscredential;
            Identity             = "Global";
        }

        TeamsGuestMeetingConfiguration "TeamsGuestMeetingConfiguration-Global"
        {
            AllowIPVideo            = $True;
            AllowMeetNow            = $True;
            Credential              = $Credscredential;
            Identity                = "Global";
            LiveCaptionsEnabledType = "DisabledUserOverride";
            ScreenSharingMode       = "EntireScreen";
        }

        TeamsGuestMessagingConfiguration "TeamsGuestMessagingConfiguration-Global"
        {
            AllowGiphy             = $True;
            AllowImmersiveReader   = $True;
            AllowMemes             = $True;
            AllowStickers          = $True;
            AllowUserChat          = $True;
            AllowUserDeleteChat    = $True;
            AllowUserDeleteMessage = $True;
            AllowUserEditMessage   = $True;
            Credential             = $Credscredential;
            GiphyRatingType        = "Moderate";
            Identity               = "Global";
        }

        TeamsIPPhonePolicy "TeamsIPPhonePolicy-Global"
        {
            AllowBetterTogether            = "Enabled";
            AllowHomeScreen                = "EnabledUserOverride";
            AllowHotDesking                = $True;
            Credential                     = $Credscredential;
            Ensure                         = "Present";
            HotDeskingIdleTimeoutInMinutes = 120;
            Identity                       = "Global";
            SearchOnCommonAreaPhoneMode    = "Enabled";
            SignInMode                     = "UserSignIn";
        }

        TeamsMeetingBroadcastConfiguration "TeamsMeetingBroadcastConfiguration-Global"
        {
            AllowSdnProviderForBroadcastMeeting = $False;
            Credential                          = $Credscredential;
            Identity                            = "Global";
            SdnApiTemplateUrl                   = "";
            SdnApiToken                         = $ConfigurationData.Settings.SdnApiToken;
            SdnLicenseId                        = "";
            SdnProviderName                     = "";
            SupportURL                          = "https://support.office.com/home/contact";
        }

        TeamsMeetingBroadcastPolicy "TeamsMeetingBroadcastPolicy-Global"
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "Everyone";
            BroadcastRecordingMode          = "UserOverride";
            Credential                      = $Credscredential;
            Ensure                          = "Present";
            Identity                        = "Global";
        }

        TeamsMeetingBroadcastPolicy "TeamsMeetingBroadcastPolicy-Tag:Default"
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Credential                      = $Credscredential;
            Ensure                          = "Present";
            Identity                        = "Tag:Default";
        }

        TeamsMeetingConfiguration "TeamsMeetingConfiguration-Global"
        {
            ClientAppSharingPort        = 50040;
            ClientAppSharingPortRange   = 20;
            ClientAudioPort             = 50000;
            ClientAudioPortRange        = 20;
            ClientMediaPortRangeEnabled = $True;
            ClientVideoPort             = 50020;
            ClientVideoPortRange        = 20;
            Credential                  = $Credscredential;
            CustomFooterText            = "";
            DisableAnonymousJoin        = $False;
            EnableQoS                   = $False;
            Identity                    = "Global";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Global"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $True;
            AllowWatermarkForScreenSharing             = $True;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInSameAndFederatedCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Global";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:AllOn"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:AllOn";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:RestrictedAnonymousAccess"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:RestrictedAnonymousAccess";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:AllOff"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $False;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $False;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $False;
            AllowPowerPointSharing                     = $False;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $False;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $False;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $False;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:AllOff";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Disabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "Disabled";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:RestrictedAnonymousNoRecording"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            Description                                = "Do not assign. This policy is similar to global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:RestrictedAnonymousNoRecording";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:Default"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:Default";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMeetingPolicy "TeamsMeetingPolicy-Tag:Kiosk"
        {
            AllowAnnotations                           = $True;
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToJoinMeeting           = $True;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowCartCaptionsScheduling                = "DisabledUserOverride";
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowDocumentCollaboration                 = "Enabled";
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingCoach                          = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetingRegistration                   = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowNetworkConfigurationSettingsLookup    = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWatermarkForCameraVideo               = $False;
            AllowWatermarkForScreenSharing             = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            ChannelRecordingDownload                   = "Allow";
            Credential                                 = $Credscredential;
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            ExplicitRecordingConsent                   = "Disabled";
            ForceStreamingAttendeeMode                 = "RichClientOrganizerOverride";
            Identity                                   = "Tag:Kiosk";
            InfoShownInReportMode                      = "FullInformation";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            LiveInterpretationEnabledType              = "DisabledUserOverride";
            LiveStreamingMode                          = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            NewMeetingRecordingExpirationDays          = 120;
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            QnAEngagementMode                          = "Enabled";
            RoomPeopleNameUserOverride                 = "Off";
            ScreenSharingMode                          = "EntireScreen";
            SpeakerAttributionMode                     = "EnabledUserOverride";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
            WhoCanRegister                             = "Everyone";
        }

        TeamsMessagingPolicy "TeamsMessagingPolicy-Global"
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowSmartCompose             = $True;
            AllowSmartReply               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteChat           = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            Identity                      = "Global";
            ReadReceiptsEnabledType       = "UserPreference";
        }

        TeamsMessagingPolicy "TeamsMessagingPolicy-Default"
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowSmartCompose             = $True;
            AllowSmartReply               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteChat           = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            Identity                      = "Default";
            ReadReceiptsEnabledType       = "UserPreference";
        }

        TeamsMessagingPolicy "TeamsMessagingPolicy-EduFaculty"
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $True;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowSmartCompose             = $True;
            AllowSmartReply               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteChat           = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            Identity                      = "EduFaculty";
            ReadReceiptsEnabledType       = "UserPreference";
        }

        TeamsMessagingPolicy "TeamsMessagingPolicy-EduStudent"
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowSmartCompose             = $True;
            AllowSmartReply               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteChat           = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Credential                    = $Credscredential;
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            Identity                      = "EduStudent";
            ReadReceiptsEnabledType       = "UserPreference";
        }

        TeamsMobilityPolicy "TeamsMobilityPolicy-Global"
        {
            Credential             = $Credscredential;
            Ensure                 = "Present";
            Identity               = "Global";
            IPAudioMobileMode      = "AllNetworks";
            IPVideoMobileMode      = "AllNetworks";
            MobileDialerPreference = "Teams";
        }

        TeamsMobilityPolicy "TeamsMobilityPolicy-Tag:Default"
        {
            Credential             = $Credscredential;
            Ensure                 = "Present";
            Identity               = "Tag:Default";
            IPAudioMobileMode      = "AllNetworks";
            IPVideoMobileMode      = "AllNetworks";
            MobileDialerPreference = "Teams";
        }

        TeamsNetworkRoamingPolicy "TeamsNetworkRoamingPolicy-Global"
        {
            AllowIPVideo         = $True;
            Credential           = $Credscredential;
            Ensure               = "Present";
            Identity             = "Global";
            MediaBitRateKb       = 50000;
        }

        TeamsOnlineVoicemailPolicy "TeamsOnlineVoicemailPolicy-Global"
        {
            Credential                          = $Credscredential;
            EnableEditingCallAnswerRulesSetting = $True;
            EnableTranscription                 = $True;
            EnableTranscriptionProfanityMasking = $False;
            EnableTranscriptionTranslation      = $True;
            Ensure                              = "Present";
            Identity                            = "Global";
            MaximumRecordingLength              = "00:05:00";
            ShareData                           = "Defer";
        }

        TeamsOnlineVoicemailPolicy "TeamsOnlineVoicemailPolicy-Default"
        {
            Credential                          = $Credscredential;
            EnableEditingCallAnswerRulesSetting = $True;
            EnableTranscription                 = $True;
            EnableTranscriptionProfanityMasking = $False;
            EnableTranscriptionTranslation      = $True;
            Ensure                              = "Present";
            Identity                            = "Default";
            MaximumRecordingLength              = "00:05:00";
            ShareData                           = "Defer";
        }

        TeamsOnlineVoicemailPolicy "TeamsOnlineVoicemailPolicy-TranscriptionDisabled"
        {
            Credential                          = $Credscredential;
            EnableEditingCallAnswerRulesSetting = $True;
            EnableTranscription                 = $False;
            EnableTranscriptionProfanityMasking = $False;
            EnableTranscriptionTranslation      = $True;
            Ensure                              = "Present";
            Identity                            = "TranscriptionDisabled";
            MaximumRecordingLength              = "00:05:00";
            ShareData                           = "Defer";
        }

        TeamsOnlineVoicemailPolicy "TeamsOnlineVoicemailPolicy-TranscriptionProfanityMaskingEnabled"
        {
            Credential                          = $Credscredential;
            EnableEditingCallAnswerRulesSetting = $True;
            EnableTranscription                 = $True;
            EnableTranscriptionProfanityMasking = $True;
            EnableTranscriptionTranslation      = $True;
            Ensure                              = "Present";
            Identity                            = "TranscriptionProfanityMaskingEnabled";
            MaximumRecordingLength              = "00:05:00";
            ShareData                           = "Defer";
        }

