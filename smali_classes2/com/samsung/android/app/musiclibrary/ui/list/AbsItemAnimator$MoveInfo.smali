.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 52
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->b:I

    .line 53
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->c:I

    .line 54
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->d:I

    .line 55
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$MoveInfo;->e:I

    return-void
.end method
