.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;->a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->K()V

    :cond_0
    return-void
.end method
