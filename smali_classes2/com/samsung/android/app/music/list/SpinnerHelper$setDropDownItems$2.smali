.class public final Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper;->a([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/SpinnerHelper;

.field final synthetic b:[I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SpinnerHelper;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/list/SpinnerHelper;->a(Lcom/samsung/android/app/music/list/SpinnerHelper;I)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/SpinnerHelper;->c(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$2;->b:[I

    aget p2, p2, p3

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/app/music/list/SpinnerHelper$OnItemSelectedListener;->a(II)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
