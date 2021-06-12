.class Lorg/simpleframework/xml/core/TextListLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/simpleframework/xml/core/Label;

.field private final c:Lorg/simpleframework/xml/Text;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/Text;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 65
    invoke-interface {p2}, Lorg/simpleframework/xml/Text;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->a:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    .line 67
    iput-object p2, p0, Lorg/simpleframework/xml/core/TextListLabel;->c:Lorg/simpleframework/xml/Text;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->d()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lorg/simpleframework/xml/strategy/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->f()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->k()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Class;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->m()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->n()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->q()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->t()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 335
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TextListLabel;->c:Lorg/simpleframework/xml/Text;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/core/TextListLabel;->b:Lorg/simpleframework/xml/core/Label;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
