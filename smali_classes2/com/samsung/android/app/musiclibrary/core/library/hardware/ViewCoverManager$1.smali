.class Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->registerCoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 3

    .line 162
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAttachStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$402(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)Z

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 3

    .line 155
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverSwitchStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V

    return-void
.end method
