.class public Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/AbstractSearchCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleItem"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->a:I

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->b:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "mime_type"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->b:Ljava/lang/String;

    return-object p1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    iget p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->c:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "dummy"

    return-object p1
.end method
