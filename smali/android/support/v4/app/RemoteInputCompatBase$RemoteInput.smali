.class public abstract Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInputCompatBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemoteInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAllowFreeFormInput()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getAllowedDataTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getChoices()[Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getExtras()Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getResultKey()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
