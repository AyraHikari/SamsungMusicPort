.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;-><init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
