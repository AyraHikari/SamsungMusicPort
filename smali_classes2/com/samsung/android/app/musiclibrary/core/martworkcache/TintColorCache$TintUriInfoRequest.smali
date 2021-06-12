.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintUriInfoRequest"
.end annotation


# instance fields
.field private final baseUri:Landroid/net/Uri;

.field private info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

.field private final value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->baseUri:Landroid/net/Uri;

    .line 133
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void
.end method


# virtual methods
.method publish()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish called with: baseUri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->baseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], info= ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->baseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;->onGetTintUriInfo(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->info:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;

    return-void
.end method
