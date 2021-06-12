.class public Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

.field private l:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->c:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->d:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->e:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->g:Z

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->m:I

    .line 36
    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->n:I

    .line 37
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->o:I

    .line 38
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->p:I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->k:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->m:I

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->c:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->c:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->e:Z

    return v0
.end method

.method public h()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->k:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->g:Z

    return v0
.end method

.method public l()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->o:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->p:I

    return v0
.end method

.method public n()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->l:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->m:I

    return v0
.end method

.method public p()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->n:I

    return v0
.end method
