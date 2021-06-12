.class Lcom/facebook/GraphRequest$Attachment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attachment"
.end annotation


# instance fields
.field private final request:Lcom/facebook/GraphRequest;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V
    .locals 0

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    iput-object p1, p0, Lcom/facebook/GraphRequest$Attachment;->request:Lcom/facebook/GraphRequest;

    .line 1540
    iput-object p2, p0, Lcom/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/facebook/GraphRequest;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/facebook/GraphRequest$Attachment;->request:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    return-object v0
.end method
