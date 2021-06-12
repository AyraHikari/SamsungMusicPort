.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintInfoRequest"
.end annotation


# instance fields
.field private final albumId:J

.field private final baseUri:Landroid/net/Uri;

.field private l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field private final value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 106
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->baseUri:Landroid/net/Uri;

    .line 107
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->albumId:J

    .line 108
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V
    .locals 0

    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method


# virtual methods
.method publish()V
    .locals 5

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish called with: baseUri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->baseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], albumId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->albumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], l = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->baseUri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->albumId:J

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;->onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    return-void
.end method
