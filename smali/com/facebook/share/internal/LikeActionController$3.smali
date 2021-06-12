.class final Lcom/facebook/share/internal/LikeActionController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    .line 353
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 354
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 353
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->handleOnActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
