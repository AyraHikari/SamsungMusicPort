.class public Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade$CustomEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade$CustomEvent$Args;,
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade$CustomEvent$Def;
    }
.end annotation


# static fields
.field public static final CHANGE_AUDIO_PATH_TO_BT:I = 0x15

.field public static final CHANGE_AUDIO_PATH_TO_DEVICE:I = 0x14

.field public static final CHANGE_DEFAULT_PLAYER:I = 0xa

.field public static final CHANGE_DMR_PLAYER:I = 0x9

.field public static final CHANGE_WFD:I = 0xb

.field public static final DISCONNECT_MEDIA_ROUTE:I = 0x67

.field public static final DLNA_BIND:I = 0x1

.field public static final DLNA_REFRESH:I = 0x2

.field public static final DLNA_SELECT_DMS:I = 0x3

.field public static final DLNA_VOLUME_DOWN:I = 0x5

.field public static final DLNA_VOLUME_MUTE:I = 0x4

.field public static final DLNA_VOLUME_UP:I = 0x6

.field public static final MEDIA_SESSION_ON_COMMAND:I = 0x2c

.field public static final NOTIFY_USER_INTERACTION:I = 0x2a

.field public static final PLAY_SPEED:I = 0x7

.field public static final QUEUE_ITEM_META_EDITED:I = 0xd

.field public static final RADIO_CONTROL_NEXT:I = 0x1e

.field public static final RADIO_CONTROL_PAUSE:I = 0x1d

.field public static final RADIO_CONTROL_PLAY:I = 0x1c

.field public static final RADIO_CONTROL_PREV:I = 0x1f

.field public static final RADIO_CONTROL_TOGGLE_PLAY:I = 0x1b

.field public static final RADIO_MOVE_STATION:I = 0x22

.field public static final RADIO_QUEUE_DELETE:I = 0x24

.field public static final RADIO_QUEUE_OPEN:I = 0x23

.field public static final RADIO_QUEUE_OPEN_POSITION:I = 0x26

.field public static final RADIO_QUEUE_REORDER:I = 0x25

.field public static final RADIO_RELOAD_QUEUE:I = 0x20

.field public static final RADIO_SET_MODE:I = 0x28

.field public static final RADIO_TOGGLE_MODE:I = 0x29

.field public static final RELOAD_CURRENT_PLAYING_ITEM:I = 0x2b

.field public static final REQUEST_QUEUE:I = 0x13

.field public static final REQUEST_RADIO_QUEUE:I = 0x27

.field public static final SELECT_MEDIA_ROUTE:I = 0x66

.field public static final SELECT_MEDIA_ROUTE_BY_TRANSFER:I = 0x68

.field public static final SETTINGS_PLAY_SPEED:I = 0xc

.field public static final SET_ACTIVE_QUEUE_TYPE:I = 0x21

.field public static final SET_ADAPT_SOUND:I = 0xe

.field public static final SET_BARGE_IN:I = 0x11

.field public static final SET_LEGACY_SOUND_ALIVE_PRESET:I = 0x18

.field public static final SET_LEGACY_SOUND_ALIVE_USER:I = 0x19

.field public static final SET_LOCK_SCREEN:I = 0xf

.field public static final SET_SCREEN_OFF_MUSIC:I = 0x10

.field public static final SET_SKIP_SILENCES:I = 0x12

.field public static final SET_SMART_VOLUME:I = 0x8

.field public static final SET_SORT_MODE:I = 0x1a

.field public static final SET_SOURCE_LIST_ID:I = 0x16

.field public static final SET_SUPPORT_AOD:I = 0x17

.field public static final START_DISCOVERY_MEDIA_ROUTE:I = 0x64

.field public static final STOP_DISCOVERY_MEDIA_ROUTE:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
