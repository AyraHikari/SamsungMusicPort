.class Lcom/facebook/share/internal/ShareContentValidation$Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Validator"
.end annotation


# instance fields
.field private isOpenGraphContent:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenGraphContent()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return v0
.end method

.method public validate(Lcom/facebook/share/model/ShareCameraEffectContent;)V
    .locals 0

    .line 523
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1100(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 0

    .line 507
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$700(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMedia;)V
    .locals 0

    .line 553
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 0

    .line 519
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1000(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 0

    .line 561
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$1900(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 0

    .line 565
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$2000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 0

    .line 557
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$1800(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0

    .line 532
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1300(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    .line 528
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1200(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0

    .line 536
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1400(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0

    .line 541
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->access$1500(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    .line 545
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 0

    .line 511
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$800(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareStoryContent;)V
    .locals 0

    .line 569
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideo;)V
    .locals 0

    .line 549
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1700(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 0

    .line 515
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$900(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method
