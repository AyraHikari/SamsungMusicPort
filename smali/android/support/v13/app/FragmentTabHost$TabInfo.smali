.class final Landroid/support/v13/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field final args:Landroid/os/Bundle;

.field final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field fragment:Landroid/app/Fragment;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 64
    iput-object p3, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method
