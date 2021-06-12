.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final control$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "control"

    const-string v4, "getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl$Stub;-><init>()V

    .line 62
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->control$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->control$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    return-object v0
.end method


# virtual methods
.method public buffering()I
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->buffering()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->next()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->pause()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->play()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public position()J
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->prev(Z)V

    return-void
.end method

.method public seek(J)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->seek(J)V

    return-void
.end method

.method public togglePlay()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->getControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->togglePlay()V

    return-void
.end method
