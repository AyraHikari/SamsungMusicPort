.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:I

.field private final c:[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;


# direct methods
.method public varargs constructor <init>(Landroid/support/v4/app/Fragment;I[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->a:Landroid/support/v4/app/Fragment;

    .line 22
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->b:I

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->c:[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->a:Landroid/support/v4/app/Fragment;

    .line 29
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;->c:[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 31
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->a(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 33
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->b(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
