.class Lcom/samsung/android/app/music/list/local/QueueFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;->j()V
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

    .line 255
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
