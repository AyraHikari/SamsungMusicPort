.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$PlayableItems;,
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$RootItems;,
        Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems$Root;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OTHER_ITEMS_KEY:I = 0x5

.field static final PATH_DIVIDER:Ljava/lang/String; = "/"

.field public static final ROOT_BROWSABLE_ITEMS_KEY:I = 0x2

.field public static final ROOT_KEY:I = 0x1

.field public static final ROOT_PLAYABLE_ITEMS_KEY:I = 0x3

.field public static final ROOT_PLAYABLE_ONE_ITEM_KEY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "root"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "bt_root"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "root_include_online"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Albums"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Artists"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Playlists"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Genres"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Folders"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Composers"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Top picks"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Popular albums"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Top charts"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "Tracks"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    const-string v1, "req_track_one"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->ITEM_TYPE:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method
