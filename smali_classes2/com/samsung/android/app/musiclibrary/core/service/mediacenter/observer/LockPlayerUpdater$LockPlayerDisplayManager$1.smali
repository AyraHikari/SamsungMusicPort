.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->mState:I

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 182
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    .line 185
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->mState:I

    if-eq v0, p1, :cond_0

    .line 190
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->mState:I

    .line 191
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->mState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;->mState:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;->onDisplayChanged(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
