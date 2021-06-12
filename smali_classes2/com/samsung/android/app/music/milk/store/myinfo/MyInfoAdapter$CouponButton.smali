.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;
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
    name = "CouponButton"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IZLandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "onClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->a:I

    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->b:Z

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final b()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->b:Z

    return v0
.end method

.method public final d()Landroid/view/View$OnClickListener;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$CouponButton;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method
