.class Lcom/dawin/util/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/h;


# direct methods
.method constructor <init>(Lcom/dawin/util/h;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dawin/util/a$a;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    const-string v1, "aid"

    iget-object v2, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dawin/util/h;->a(Lcom/dawin/util/h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    const-string v1, "au"

    iget-object v2, p1, Lcom/dawin/util/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dawin/util/h;->a(Lcom/dawin/util/h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    iget-object v1, p1, Lcom/dawin/util/a$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dawin/util/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    iget-object p1, p1, Lcom/dawin/util/a$a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/dawin/util/h;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    const-string v0, "au"

    const-string v1, "N"

    invoke-static {p1, v0, v1}, Lcom/dawin/util/h;->a(Lcom/dawin/util/h;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/dawin/util/h$1;->a:Lcom/dawin/util/h;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dawin/util/h;->a(Lcom/dawin/util/h;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
