.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemesDataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/model/base/TagModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/app/music/model/base/TagModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$3;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader$2;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    return-void
.end method

.method static synthetic g()Ljava/util/Comparator;
    .locals 1

    .line 280
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;->a:Ljava/util/Comparator;

    return-object v0
.end method
