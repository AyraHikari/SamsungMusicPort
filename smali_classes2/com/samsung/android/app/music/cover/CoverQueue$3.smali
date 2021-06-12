.class Lcom/samsung/android/app/music/cover/CoverQueue$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/cover/CoverQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue;I)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->b:Lcom/samsung/android/app/music/cover/CoverQueue;

    iput p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->b:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(Lcom/samsung/android/app/music/cover/CoverQueue;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$3;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
