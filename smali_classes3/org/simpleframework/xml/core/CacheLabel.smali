.class Lorg/simpleframework/xml/core/CacheLabel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private final a:Ljava/lang/annotation/Annotation;

.field private final b:Lorg/simpleframework/xml/core/Expression;

.field private final c:Lorg/simpleframework/xml/core/Decorator;

.field private final d:Lorg/simpleframework/xml/core/Contact;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:Ljava/lang/Class;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lorg/simpleframework/xml/core/Label;

.field private final m:Ljava/lang/Object;

.field private final n:Lorg/simpleframework/xml/strategy/Type;

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field private final u:Z

.field private final v:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->a:Ljava/lang/annotation/Annotation;

    .line 156
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->k()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->b:Lorg/simpleframework/xml/core/Expression;

    .line 157
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->e()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->c:Lorg/simpleframework/xml/core/Decorator;

    .line 158
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->r()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->r:Z

    .line 159
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->s()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->t:Z

    .line 160
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->d()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->d:Lorg/simpleframework/xml/core/Contact;

    .line 161
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->f()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->n:Lorg/simpleframework/xml/strategy/Type;

    .line 162
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->t()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->s:Z

    .line 163
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->j:Ljava/lang/String;

    .line 164
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->p()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->v:Z

    .line 165
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->q()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->u:Z

    .line 166
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->u()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->q:Z

    .line 167
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->e:[Ljava/lang/String;

    .line 168
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->f:[Ljava/lang/String;

    .line 169
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->i:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->m()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->g:Ljava/lang/Class;

    .line 171
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->k:Ljava/lang/String;

    .line 172
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->h:Ljava/lang/String;

    .line 173
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->n()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->o:Z

    .line 174
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->o()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->p:Z

    .line 175
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->m:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheLabel;->l:Lorg/simpleframework/xml/core/Label;

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

    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public d()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->d:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public e()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->c:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public f()Lorg/simpleframework/xml/strategy/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->n:Lorg/simpleframework/xml/strategy/Type;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->b:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Class;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->o:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->p:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->v:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->u:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->r:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->t:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->s:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->l:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->q:Z

    return v0
.end method
