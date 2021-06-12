.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;
    .locals 14

    .line 35
    new-instance v13, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;-><init>(JIIJJZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$playbackStateBuilder$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method
