.class Lcom/samsung/android/app/music/list/local/QueueFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment$6;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
