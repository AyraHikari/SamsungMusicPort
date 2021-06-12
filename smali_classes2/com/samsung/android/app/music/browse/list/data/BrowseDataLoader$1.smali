.class Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->loadInBackground()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;->a:Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;->a(Ljava/lang/Exception;)V

    return-void
.end method
