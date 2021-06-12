.class public Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;->a:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f040177

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1302d2

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f1302d3

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    iget v3, p0, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 29
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method
