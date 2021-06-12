.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method

.method private a(Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .locals 9

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 134
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 136
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->e(I)J

    move-result-wide v4

    .line 137
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->b(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(I)Ljava/lang/String;

    .line 139
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->g(I)Z

    move-result v3

    .line 140
    iget-object v7, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->a:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "00"

    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    iget-object v6, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->b:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->c:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_1
    iget-boolean v4, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->d:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 147
    iput-boolean v3, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->d:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a(Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    move-result-object p0

    return-object p0
.end method

.method private varargs a(Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;
    .locals 10

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    .line 90
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 96
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->c(I)I

    move-result v7

    .line 98
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->b(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "00"

    .line 99
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/2addr v6, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_2
    :goto_2
    array-length p1, p2

    if-ge v1, p1, :cond_3

    const/4 p1, 0x0

    .line 110
    aget v0, p2, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 118
    :pswitch_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 115
    :pswitch_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 112
    :pswitch_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    :goto_3
    aput-object p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v2

    .line 125
    :cond_4
    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs b([I)[Ljava/lang/String;
    .locals 3

    .line 79
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string v2, "0"

    .line 81
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;Landroid/util/SparseBooleanArray;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 55
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public varargs a([I)[Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a(Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->b([I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
