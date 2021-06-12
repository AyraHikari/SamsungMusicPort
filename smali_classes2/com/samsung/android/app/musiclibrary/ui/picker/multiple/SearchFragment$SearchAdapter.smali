.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;",
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

    .line 373
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 379
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_item:I

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 382
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
