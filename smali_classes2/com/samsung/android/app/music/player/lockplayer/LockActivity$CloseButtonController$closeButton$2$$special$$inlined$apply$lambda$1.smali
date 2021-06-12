.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->invoke()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 504
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController$closeButton$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    return-void
.end method
