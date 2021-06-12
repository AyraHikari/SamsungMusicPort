.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 22
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->default_list_item_global_search:I

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 25
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
