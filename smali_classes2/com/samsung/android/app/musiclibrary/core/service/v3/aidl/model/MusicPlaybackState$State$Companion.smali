.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;

.field public static final BUFFERING:I = 0x6

.field public static final ERROR:I = 0x7

.field public static final IDLE:I = 0x0

.field public static final PAUSED:I = 0x2

.field public static final PLAYING:I = 0x3

.field public static final STOPPED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$State$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString$musicLibrary_release(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string p1, "ERROR"

    goto :goto_0

    :pswitch_2
    const-string p1, "BUFFERING"

    goto :goto_0

    :pswitch_3
    const-string p1, "PLAYING"

    goto :goto_0

    :pswitch_4
    const-string p1, "PAUSED"

    goto :goto_0

    :pswitch_5
    const-string p1, "STOPPED"

    goto :goto_0

    :pswitch_6
    const-string p1, "IDLE"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
