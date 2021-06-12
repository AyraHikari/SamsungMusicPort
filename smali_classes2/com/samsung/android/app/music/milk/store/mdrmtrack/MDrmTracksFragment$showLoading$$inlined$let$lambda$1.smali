.class final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$showLoading$$inlined$let$lambda$1;->b:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->c(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->k()V

    :cond_0
    return-void
.end method
