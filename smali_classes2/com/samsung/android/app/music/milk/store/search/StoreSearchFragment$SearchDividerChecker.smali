.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchDividerChecker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z
    .locals 6
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 661
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_3

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-lez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method
