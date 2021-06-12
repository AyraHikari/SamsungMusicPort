.class public Lcom/dawin/objects/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/objects/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dawin/objects/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/dawin/objects/c;->a:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/dawin/objects/c;->b:I

    const v0, 0x1869f

    iput v0, p0, Lcom/dawin/objects/c;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/objects/c;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    return-void
.end method
