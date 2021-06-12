.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;
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
    name = "NoItem"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "onClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->a:I

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->b:I

    return v0
.end method

.method public final d()Landroid/view/View$OnClickListener;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$NoItem;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method
