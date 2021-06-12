.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt$forEachIInterface$1;->invoke(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
