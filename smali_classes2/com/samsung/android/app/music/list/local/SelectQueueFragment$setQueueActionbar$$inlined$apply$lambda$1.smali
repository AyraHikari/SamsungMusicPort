.class final Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SelectQueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$setQueueActionbar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
