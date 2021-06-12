.class Lcom/samsung/android/app/music/search/SearchHistoryFragment$HistoryDividerChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryDividerChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$HistoryDividerChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 295
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method
