.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    return-void
.end method
