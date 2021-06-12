.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 930
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError more than once, so ignore it what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
