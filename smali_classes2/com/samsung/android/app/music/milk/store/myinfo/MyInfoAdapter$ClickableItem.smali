.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClickableItem"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "onClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final b()I
    .locals 1

    .line 571
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->a:I

    return v0
.end method

.method public final c()Landroid/view/View$OnClickListener;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$ClickableItem;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method
