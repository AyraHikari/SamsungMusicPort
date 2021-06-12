.class Lcom/samsung/android/app/music/list/local/QueueFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->k()Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
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

    .line 575
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$7;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$7;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$7;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Lcom/samsung/android/app/music/list/local/QueueFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 579
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSortMode(I)V

    :cond_0
    return-void
.end method
