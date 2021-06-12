.class public Lcom/facebook/internal/ImageRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/internal/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imageUri"

    .line 135
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/facebook/internal/ImageRequest$Builder;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/facebook/internal/ImageRequest$Builder;->imageUrl:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/ImageRequest$Builder;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/internal/ImageRequest$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageRequest$Builder;)Landroid/net/Uri;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/internal/ImageRequest$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageRequest$Builder;)Lcom/facebook/internal/ImageRequest$Callback;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/internal/ImageRequest$Builder;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/internal/ImageRequest$Builder;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/facebook/internal/ImageRequest$Builder;->allowCachedRedirects:Z

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/lang/Object;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/internal/ImageRequest;
    .locals 2

    .line 156
    new-instance v0, Lcom/facebook/internal/ImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/ImageRequest;-><init>(Lcom/facebook/internal/ImageRequest$Builder;Lcom/facebook/internal/ImageRequest$1;)V

    return-object v0
.end method

.method public setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/facebook/internal/ImageRequest$Builder;->allowCachedRedirects:Z

    return-object p0
.end method

.method public setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/facebook/internal/ImageRequest$Builder;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    return-object p0
.end method

.method public setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    return-object p0
.end method
