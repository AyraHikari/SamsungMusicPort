.class Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;
.super Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f040043

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
