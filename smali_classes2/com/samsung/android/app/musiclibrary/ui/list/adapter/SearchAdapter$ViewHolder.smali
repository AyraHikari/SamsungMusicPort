.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 36
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    return-void
.end method

.method protected initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 41
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    return-void
.end method
