.class Lcom/dawin/util/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/util/c;->a(Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/c;


# direct methods
.method constructor <init>(Lcom/dawin/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/util/c$1;->a:Lcom/dawin/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/dawin/util/c$1;->a:Lcom/dawin/util/c;

    invoke-static {p1}, Lcom/dawin/util/c;->a(Lcom/dawin/util/c;)Lcom/dawin/util/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/util/c$1;->a:Lcom/dawin/util/c;

    invoke-static {p1}, Lcom/dawin/util/c;->a(Lcom/dawin/util/c;)Lcom/dawin/util/c$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/dawin/util/c$a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
