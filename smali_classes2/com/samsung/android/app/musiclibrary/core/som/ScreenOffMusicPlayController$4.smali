.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

.field final synthetic val$isActivated:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->val$isActivated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$600(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->val$isActivated:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$700(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;->val$isActivated:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method
