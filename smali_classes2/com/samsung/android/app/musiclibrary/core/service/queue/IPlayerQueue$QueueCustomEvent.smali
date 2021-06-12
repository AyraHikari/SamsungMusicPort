.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueCustomEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueCustomEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueCustomEvent$Def;
    }
.end annotation


# static fields
.field public static final CHANGED_NETWORK:I = 0x6

.field public static final MOVE_RADIO_STATION:I = 0x8

.field public static final MOVE_TO_NEXT_BY_TYPE:I = 0x2

.field public static final MOVE_TO_PREV_BY_TYPE:I = 0x3

.field public static final NOTIFY_META_CHANGED:I = 0x7

.field public static final RADIO_PRE_AUDIO_AD:I = 0x9

.field public static final RADIO_QUEUE_DELETE:I = 0xb

.field public static final RADIO_QUEUE_OPEN:I = 0xa

.field public static final RADIO_QUEUE_REORDER:I = 0xc

.field public static final RADIO_SET_MODE:I = 0xd

.field public static final RADIO_TOGGLE_MODE:I = 0xe

.field public static final RELOAD_RADIO_QUEUE:I = 0x4

.field public static final SET_ACTIVE_TYPE:I = 0x1

.field public static final SET_MY_MUSIC_MODE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
