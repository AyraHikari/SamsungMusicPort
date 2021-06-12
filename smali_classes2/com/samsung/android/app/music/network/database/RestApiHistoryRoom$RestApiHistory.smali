.class public Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestApiHistory"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "request"

    .line 94
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "response"

    .line 95
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "time"

    .line 96
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;
    .locals 2

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;-><init>()V

    const-string v1, "request"

    .line 80
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "request"

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->b:Ljava/lang/String;

    :cond_0
    const-string v1, "response"

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "response"

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->c:Ljava/lang/String;

    :cond_1
    const-string v1, "time"

    .line 86
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "time"

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->d:Ljava/lang/String;

    :cond_2
    return-object v0
.end method
