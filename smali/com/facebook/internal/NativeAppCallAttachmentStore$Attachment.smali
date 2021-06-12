.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeAppCallAttachmentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentName:Ljava/lang/String;

.field private final attachmentUrl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final callId:Ljava/util/UUID;

.field private isContentUri:Z

.field private originalUri:Landroid/net/Uri;

.field private shouldCreateFile:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    .line 240
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 244
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "content"

    .line 245
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    .line 247
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string p3, "media"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_1

    :cond_1
    const-string v1, "file"

    .line 249
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_1

    .line 251
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 252
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported scheme for media Uri : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_7

    .line 255
    iput-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    .line 260
    :goto_1
    iget-boolean p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 261
    iget-boolean p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez p2, :cond_6

    iget-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    .line 262
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 264
    :cond_6
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 263
    invoke-static {p2, p1, p3}, Lcom/facebook/FacebookContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-void

    .line 257
    :cond_7
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    return p0
.end method


# virtual methods
.method public getAttachmentUrl()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    return-object v0
.end method
