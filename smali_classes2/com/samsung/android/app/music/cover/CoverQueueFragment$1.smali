.class Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Z)V
    .locals 3

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a()V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    :cond_0
    return-void
.end method
