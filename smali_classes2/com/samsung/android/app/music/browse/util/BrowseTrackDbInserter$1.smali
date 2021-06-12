.class final Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Transformer<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->b:I

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    const-string v0, "track_id"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chart_id"

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chart_type"

    .line 134
    iget v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "rank"

    .line 135
    iget v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$1;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
