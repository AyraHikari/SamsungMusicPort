.class public Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Feedback"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->c:Lorg/json/JSONArray;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->d:Lorg/json/JSONArray;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] There is no data in DB. Maybe card is expired after 7 days"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->m(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->o(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 54
    new-instance p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object p0

    .line 50
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get feedback. fail to read feedback db"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw p0

    .line 35
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get feedback. dbHandler null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw p0

    .line 29
    :cond_4
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get feedback. invalid params"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public c()Lorg/json/JSONArray;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public d()Lorg/json/JSONArray;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->e:Lorg/json/JSONArray;

    return-object v0
.end method
