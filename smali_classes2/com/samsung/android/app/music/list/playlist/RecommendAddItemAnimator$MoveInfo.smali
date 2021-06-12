.class public final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveInfo"
.end annotation


# instance fields
.field private fromX:I

.field private fromY:I

.field private holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private toX:I

.field private toY:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toY:I

    return-void
.end method


# virtual methods
.method public final getFromX()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromX:I

    return v0
.end method

.method public final getFromY()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromY:I

    return v0
.end method

.method public final getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public final getToX()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toX:I

    return v0
.end method

.method public final getToY()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toY:I

    return v0
.end method

.method public final setFromX(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromX:I

    return-void
.end method

.method public final setFromY(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->fromY:I

    return-void
.end method

.method public final setHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public final setToX(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toX:I

    return-void
.end method

.method public final setToY(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->toY:I

    return-void
.end method
